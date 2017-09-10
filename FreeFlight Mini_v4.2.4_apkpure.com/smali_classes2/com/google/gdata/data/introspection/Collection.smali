.class public Lcom/google/gdata/data/introspection/Collection;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Collection.java"

# interfaces
.implements Lcom/google/gdata/data/Reference;
.implements Lcom/google/gdata/data/introspection/ICollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/introspection/Collection$Handler;
    }
.end annotation


# instance fields
.field private accepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field private categoriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/introspection/Categories;",
            ">;"
        }
    .end annotation
.end field

.field private coreVersion:Lcom/google/gdata/util/Version;

.field private href:Ljava/lang/String;

.field private title:Lcom/google/gdata/data/TextConstruct;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 62
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    .line 63
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->categoriesList:Ljava/util/List;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/data/introspection/Collection;-><init>(Ljava/lang/String;Lcom/google/gdata/data/TextConstruct;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/data/TextConstruct;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "title"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 62
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    .line 63
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->categoriesList:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Collection;->href:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    .line 75
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/google/gdata/data/TextConstruct;[Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "title"    # Lcom/google/gdata/data/TextConstruct;
    .param p3, "accepts"    # [Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/introspection/Collection;-><init>(Ljava/lang/String;Lcom/google/gdata/data/TextConstruct;)V

    .line 79
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/introspection/Collection;)Lcom/google/gdata/util/Version;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/introspection/Collection;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/gdata/data/introspection/Collection;)Lcom/google/gdata/data/TextConstruct;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/introspection/Collection;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/gdata/data/introspection/Collection;Lcom/google/gdata/data/TextConstruct;)Lcom/google/gdata/data/TextConstruct;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/introspection/Collection;
    .param p1, "x1"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/gdata/data/introspection/Collection;)Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/introspection/Collection;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/gdata/data/introspection/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/introspection/Collection;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    return-object p1
.end method

.method public static getAtomEntryAcceptType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "entry"

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "application/atom+xml;type=entry"

    goto :goto_0
.end method


# virtual methods
.method public addAccept(Ljava/lang/String;)V
    .locals 1
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public addCategories(Lcom/google/gdata/data/introspection/Categories;)V
    .locals 1
    .param p1, "c"    # Lcom/google/gdata/data/introspection/Categories;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->categoriesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 4
    .param p1, "attrHelper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 185
    const-string v1, "href"

    invoke-virtual {p1, v1, v3}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/data/introspection/Collection;->href:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/google/gdata/data/introspection/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    sget-object v2, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "title"

    invoke-virtual {p1, v1, v3}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "titleAttr":Ljava/lang/String;
    new-instance v1, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v1, v0}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    .line 190
    .end local v0    # "titleAttr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 9
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v2, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    sget-object v6, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v5, v6}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    new-instance v5, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v6, "title"

    iget-object v7, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v7}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    new-instance v5, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v6, "href"

    iget-object v7, p0, Lcom/google/gdata/data/introspection/Collection;->href:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "collection"

    invoke-virtual {p1, v5, v6, v2, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 153
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    sget-object v6, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v5, v6}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 154
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 155
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v1, "acceptBuf":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "accept":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 162
    .end local v0    # "accept":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "accept"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v8, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 177
    .end local v1    # "acceptBuf":Ljava/lang/StringBuffer;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/introspection/Collection;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 179
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "collection"

    invoke-virtual {p1, v5, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 180
    return-void

    .line 165
    :cond_4
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v5, :cond_5

    .line 166
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    const-string v6, "title"

    invoke-virtual {v5, p1, v6}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 168
    :cond_5
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .restart local v0    # "accept":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 170
    iget-object v5, p0, Lcom/google/gdata/data/introspection/Collection;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "accept"

    invoke-virtual {p1, v5, v6, v8, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    .end local v0    # "accept":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/google/gdata/data/introspection/Collection;->getCategoriesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/data/introspection/Categories;

    .line 174
    .local v3, "categories":Lcom/google/gdata/data/introspection/Categories;
    invoke-virtual {v3, p1, p2}, Lcom/google/gdata/data/introspection/Categories;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_2
.end method

.method public getAcceptList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->accepts:Ljava/util/List;

    return-object v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/introspection/Categories;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->categoriesList:Ljava/util/List;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 195
    new-instance v0, Lcom/google/gdata/data/introspection/Collection$Handler;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/gdata/data/introspection/Collection$Handler;-><init>(Lcom/google/gdata/data/introspection/Collection;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->href:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getTitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/gdata/data/introspection/Collection;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/google/gdata/util/ContentType;->getAtomFeed()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Collection;->href:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 0
    .param p1, "title"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Collection;->title:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method
