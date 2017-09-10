.class public Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;
.super Ljava/lang/Object;
.source "AtomRssTransforms.java"


# static fields
.field private static final AUTHOR:Lcom/google/gdata/model/QName;

.field private static final CATEGORY:Lcom/google/gdata/model/QName;

.field private static final COPYRIGHT:Lcom/google/gdata/model/QName;

.field private static final DESCRIPTION:Lcom/google/gdata/model/QName;

.field private static final DOMAIN:Lcom/google/gdata/model/QName;

.field private static final GENERATOR:Lcom/google/gdata/model/QName;

.field private static final GUID:Lcom/google/gdata/model/QName;

.field private static final ITEM:Lcom/google/gdata/model/QName;

.field private static final LAST_BUILD_DATE:Lcom/google/gdata/model/QName;

.field private static final MANAGING_EDITOR:Lcom/google/gdata/model/QName;

.field private static final PUB_DATE:Lcom/google/gdata/model/QName;

.field private static final RSS_NAME:Lcom/google/gdata/model/QName;

.field private static final TITLE:Lcom/google/gdata/model/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "domain"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->DOMAIN:Lcom/google/gdata/model/QName;

    .line 70
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "category"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->CATEGORY:Lcom/google/gdata/model/QName;

    .line 71
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "item"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->ITEM:Lcom/google/gdata/model/QName;

    .line 72
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "guid"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->GUID:Lcom/google/gdata/model/QName;

    .line 73
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "title"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->TITLE:Lcom/google/gdata/model/QName;

    .line 74
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "pubDate"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->PUB_DATE:Lcom/google/gdata/model/QName;

    .line 75
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "author"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->AUTHOR:Lcom/google/gdata/model/QName;

    .line 76
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "rss"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->RSS_NAME:Lcom/google/gdata/model/QName;

    .line 77
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "description"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->DESCRIPTION:Lcom/google/gdata/model/QName;

    .line 79
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "lastBuildDate"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->LAST_BUILD_DATE:Lcom/google/gdata/model/QName;

    .line 81
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "copyright"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->COPYRIGHT:Lcom/google/gdata/model/QName;

    .line 83
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "managingEditor"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->MANAGING_EDITOR:Lcom/google/gdata/model/QName;

    .line 85
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "generator"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->GENERATOR:Lcom/google/gdata/model/QName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->generateEnclosure(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static addAppEditedTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 449
    sget-object v0, Lcom/google/gdata/model/atompub/Edited;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    .line 450
    return-void
.end method

.method private static addCategoryTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 6
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v5, 0x0

    .line 105
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->CATEGORY:Lcom/google/gdata/model/QName;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/model/MetadataValueTransform;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/gdata/model/MetadataKey;

    sget-object v3, Lcom/google/gdata/model/atom/Category;->TERM:Lcom/google/gdata/model/AttributeKey;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    sget-object v4, Lcom/google/gdata/model/atom/Category;->LABEL:Lcom/google/gdata/model/AttributeKey;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/gdata/model/MetadataValueTransform;-><init>([Lcom/google/gdata/model/MetadataKey;)V

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreator;

    .line 110
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Category;->SCHEME:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->DOMAIN:Lcom/google/gdata/model/QName;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/AttributeCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeCreator;

    .line 113
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Category;->LABEL:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 116
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Category;->TERM:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 118
    return-void
.end method

.method private static addContentTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v2, 0x0

    .line 121
    sget-object v0, Lcom/google/gdata/model/atom/TextContent;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->DESCRIPTION:Lcom/google/gdata/model/QName;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    new-array v1, v2, [Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->whitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreator;

    .line 124
    sget-object v0, Lcom/google/gdata/model/atom/TextContent;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    new-array v1, v2, [Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->whitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreator;

    .line 126
    return-void
.end method

.method private static addEntryOutOfLineContentTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 229
    new-instance v0, Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;-><init>()V

    .line 230
    .local v0, "properties":Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    new-instance v1, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$4;

    invoke-direct {v1}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->setElementGenerator(Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;)Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    .line 257
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/gdata/model/ElementCreator;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;

    .line 259
    return-void
.end method

.method private static addEntryTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 6
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v5, 0x0

    .line 129
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->ITEM:Lcom/google/gdata/model/QName;

    invoke-interface {v2, v3}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    .line 131
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/gd/GdAttributes;->ETAG:Lcom/google/gdata/model/AttributeKey;

    sget-object v4, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 134
    new-instance v1, Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    invoke-direct {v1}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;-><init>()V

    .line 135
    .local v1, "properties":Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    new-instance v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$1;

    invoke-direct {v2}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->setElementGenerator(Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;)Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    .line 147
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/atom/Entry;->ID:Lcom/google/gdata/model/ElementKey;

    sget-object v4, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->GUID:Lcom/google/gdata/model/QName;

    invoke-interface {v2, v3}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/gdata/model/ElementCreator;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;

    .line 151
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/atom/Entry;->TITLE:Lcom/google/gdata/model/ElementKey;

    sget-object v4, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->TITLE:Lcom/google/gdata/model/QName;

    invoke-interface {v2, v3}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    .line 154
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/atom/Entry;->PUBLISHED:Lcom/google/gdata/model/ElementKey;

    sget-object v4, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->PUB_DATE:Lcom/google/gdata/model/QName;

    invoke-interface {v2, v3}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    new-instance v3, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$2;

    invoke-direct {v3}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$2;-><init>()V

    invoke-interface {v2, v3}, Lcom/google/gdata/model/ElementCreator;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreator;

    .line 170
    new-instance v0, Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;-><init>()V

    .line 171
    .local v0, "personProperties":Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    new-instance v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$3;

    invoke-direct {v2}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$3;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->setElementGenerator(Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;)Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    .line 216
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v4, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->AUTHOR:Lcom/google/gdata/model/QName;

    invoke-interface {v2, v3}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/gdata/model/ElementCreator;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;

    .line 220
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v4, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->AUTHOR:Lcom/google/gdata/model/QName;

    invoke-interface {v2, v3}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/gdata/model/ElementCreator;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;

    .line 224
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/atom/Entry;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    sget-object v4, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    .line 225
    return-void
.end method

.method private static addFeedTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 262
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/gd/GdAttributes;->ETAG:Lcom/google/gdata/model/AttributeKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 265
    new-instance v0, Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;-><init>()V

    .line 266
    .local v0, "properties":Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    new-instance v1, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$5;

    invoke-direct {v1}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->setElementGenerator(Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;)Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    .line 298
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->RSS_NAME:Lcom/google/gdata/model/QName;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/gdata/model/ElementCreator;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;

    .line 302
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/atom/Feed;->UPDATED:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->LAST_BUILD_DATE:Lcom/google/gdata/model/QName;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    new-instance v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$6;

    invoke-direct {v2}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$6;-><init>()V

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreator;

    .line 317
    return-void
.end method

.method private static addGeneratorTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v3, 0x0

    .line 439
    sget-object v0, Lcom/google/gdata/model/atom/Source$Generator;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->GENERATOR:Lcom/google/gdata/model/QName;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    .line 442
    sget-object v0, Lcom/google/gdata/model/atom/Source$Generator;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Source$Generator;->URI:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 444
    sget-object v0, Lcom/google/gdata/model/atom/Source$Generator;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Source$Generator;->VERSION:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 446
    return-void
.end method

.method private static addLinkTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 320
    new-instance v0, Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;-><init>()V

    .line 321
    .local v0, "properties":Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    new-instance v1, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$7;

    invoke-direct {v1}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$7;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->setElementGenerator(Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;)Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    .line 361
    sget-object v1, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/gdata/model/ElementCreator;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;

    .line 363
    return-void
.end method

.method private static addPersonTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v3, 0x0

    .line 430
    sget-object v0, Lcom/google/gdata/model/atom/Person;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Person;->EMAIL:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    .line 432
    sget-object v0, Lcom/google/gdata/model/atom/Person;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Person;->NAME:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    .line 434
    sget-object v0, Lcom/google/gdata/model/atom/Person;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/atom/Person;->URI:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    .line 436
    return-void
.end method

.method private static addSourceTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 6
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v4, 0x1

    .line 366
    sget-object v1, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->TITLE:Lcom/google/gdata/model/QName;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    .line 368
    sget-object v1, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->SUBTITLE:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->DESCRIPTION:Lcom/google/gdata/model/QName;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    .line 370
    new-instance v0, Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;-><init>()V

    .line 371
    .local v0, "properties":Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    new-instance v1, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$8;

    invoke-direct {v1}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$8;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->setElementGenerator(Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;)Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    .line 415
    sget-object v1, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/gdata/model/ElementCreator;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;

    .line 417
    sget-object v1, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/gdata/model/ElementCreator;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;

    .line 420
    sget-object v1, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->COPYRIGHT:Lcom/google/gdata/model/QName;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    .line 424
    sget-object v1, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    sget-object v2, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v3, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->MANAGING_EDITOR:Lcom/google/gdata/model/QName;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    new-instance v2, Lcom/google/gdata/model/MetadataValueTransform;

    new-array v3, v4, [Lcom/google/gdata/model/MetadataKey;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/model/atom/Person;->NAME:Lcom/google/gdata/model/ElementKey;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/google/gdata/model/MetadataValueTransform;-><init>([Lcom/google/gdata/model/MetadataKey;)V

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreator;

    .line 427
    return-void
.end method

.method public static addTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addCategoryTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 93
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addContentTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 94
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addEntryTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 95
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addEntryOutOfLineContentTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 96
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addFeedTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 97
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addLinkTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 98
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addSourceTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 99
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addPersonTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 100
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addGeneratorTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 101
    invoke-static {p0}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addAppEditedTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 102
    return-void
.end method

.method private static generateEnclosure(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p0, "xw"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "href"    # Ljava/lang/String;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    if-eqz p1, :cond_0

    .line 458
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "type"

    invoke-direct {v1, v2, p1}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    if-eqz p2, :cond_1

    .line 462
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "url"

    invoke-direct {v1, v2, p2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_1
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "length"

    const-wide/16 v4, -0x1

    cmp-long v3, p3, v4

    if-nez v3, :cond_2

    const-wide/16 p3, 0x0

    .end local p3    # "length":J
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "enclosure"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 472
    return-void
.end method
