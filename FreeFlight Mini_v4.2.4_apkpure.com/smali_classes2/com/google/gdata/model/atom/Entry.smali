.class public Lcom/google/gdata/model/atom/Entry;
.super Lcom/google/gdata/model/Element;
.source "Entry.java"

# interfaces
.implements Lcom/google/gdata/data/IEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/atom/Entry$EntryState;
    }
.end annotation


# static fields
.field public static final ID:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/atom/Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLISHED:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Lcom/google/gdata/data/DateTime;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHTS:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/TextContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUMMARY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/TextContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/TextContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATED:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Lcom/google/gdata/data/DateTime;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected state:Lcom/google/gdata/model/atom/Entry$EntryState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "entry"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/model/atom/Entry;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 99
    sget-object v0, Lcom/google/gdata/model/atom/Source;->ID:Lcom/google/gdata/model/ElementKey;

    sput-object v0, Lcom/google/gdata/model/atom/Entry;->ID:Lcom/google/gdata/model/ElementKey;

    .line 104
    sget-object v0, Lcom/google/gdata/model/atom/Source;->UPDATED:Lcom/google/gdata/model/ElementKey;

    sput-object v0, Lcom/google/gdata/model/atom/Entry;->UPDATED:Lcom/google/gdata/model/ElementKey;

    .line 109
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "published"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/DateTime;

    const-class v2, Lcom/google/gdata/model/Element;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Entry;->PUBLISHED:Lcom/google/gdata/model/ElementKey;

    .line 116
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    sput-object v0, Lcom/google/gdata/model/atom/Entry;->TITLE:Lcom/google/gdata/model/ElementKey;

    .line 121
    sget-object v0, Lcom/google/gdata/model/atom/Source;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    sput-object v0, Lcom/google/gdata/model/atom/Entry;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    .line 127
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "summary"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/atom/TextContent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Entry;->SUMMARY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 218
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atom/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atom/Entry;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 225
    new-instance v0, Lcom/google/gdata/model/atom/Entry$EntryState;

    invoke-direct {v0}, Lcom/google/gdata/model/atom/Entry$EntryState;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    .line 226
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V
    .locals 1
    .param p2, "source"    # Lcom/google/gdata/model/atom/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atom/Entry;",
            ">;",
            "Lcom/google/gdata/model/atom/Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atom/Entry;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 239
    iget-object v0, p2, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iput-object v0, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    .line 240
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 135
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->PUBLISHED:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 141
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->SUMMARY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 144
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 146
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/GdAttributes;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 147
    sget-object v1, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 148
    sget-object v1, Lcom/google/gdata/model/gd/GdAttributes;->FIELDS:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 149
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->ID:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 150
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->PUBLISHED:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 151
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->UPDATED:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 152
    sget-object v1, Lcom/google/gdata/model/atompub/Edited;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 153
    sget-object v1, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 154
    sget-object v1, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 155
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 156
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->SUMMARY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 157
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 158
    sget-object v1, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const-string v2, "text"

    sget-object v3, Lcom/google/gdata/model/atom/TextContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v1, v2, v3}, Lcom/google/gdata/model/ElementCreator;->adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const-string v2, "other"

    sget-object v3, Lcom/google/gdata/model/atom/OtherContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v1, v2, v3}, Lcom/google/gdata/model/ElementCreator;->adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const-string v2, "out-of-line"

    sget-object v3, Lcom/google/gdata/model/atom/OutOfLineContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v1, v2, v3}, Lcom/google/gdata/model/ElementCreator;->adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 161
    sget-object v1, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 162
    sget-object v1, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 163
    sget-object v1, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 164
    sget-object v1, Lcom/google/gdata/model/atom/Source;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 165
    sget-object v1, Lcom/google/gdata/model/batch/BatchId;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 166
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 167
    sget-object v1, Lcom/google/gdata/model/batch/BatchOperation;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 168
    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 172
    invoke-static {p0}, Lcom/google/gdata/model/atom/TextContent;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 173
    invoke-static {p0}, Lcom/google/gdata/model/atom/OtherContent;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 174
    invoke-static {p0}, Lcom/google/gdata/model/atom/OutOfLineContent;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addAuthor(Lcom/google/gdata/model/atom/Person;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/Person;

    .prologue
    .line 471
    sget-object v0, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 472
    return-void
.end method

.method public addCategory(Lcom/google/gdata/model/atom/Category;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/Category;

    .prologue
    .line 358
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 359
    return-void
.end method

.method public addContributor(Lcom/google/gdata/model/atom/Person;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/Person;

    .prologue
    .line 488
    sget-object v0, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 489
    return-void
.end method

.method public addHtmlLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "htmlUri"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 647
    new-instance v0, Lcom/google/gdata/model/atom/Link;

    invoke-direct {v0}, Lcom/google/gdata/model/atom/Link;-><init>()V

    .line 648
    .local v0, "link":Lcom/google/gdata/model/atom/Link;
    const-string v1, "alternate"

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/atom/Link;->setRel(Ljava/lang/String;)V

    .line 649
    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/atom/Link;->setType(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p1}, Lcom/google/gdata/model/atom/Link;->setHref(Ljava/lang/String;)V

    .line 652
    if-eqz p2, :cond_0

    .line 653
    invoke-virtual {v0, p2}, Lcom/google/gdata/model/atom/Link;->setHrefLang(Ljava/lang/String;)V

    .line 656
    :cond_0
    if-eqz p3, :cond_1

    .line 657
    invoke-virtual {v0, p3}, Lcom/google/gdata/model/atom/Link;->setTitle(Ljava/lang/String;)V

    .line 660
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->addLink(Lcom/google/gdata/model/atom/Link;)V

    .line 661
    return-void
.end method

.method public bridge synthetic addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/model/atom/Entry;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;
    .locals 3
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;

    .prologue
    .line 449
    :try_start_0
    new-instance v1, Lcom/google/gdata/model/atom/Link;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/google/gdata/model/atom/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 450
    .local v1, "link":Lcom/google/gdata/model/atom/Link;
    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/Entry;->addLink(Lcom/google/gdata/model/atom/Link;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    return-object v1

    .line 452
    .end local v1    # "link":Lcom/google/gdata/model/atom/Link;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addLink(Lcom/google/gdata/model/atom/Link;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/Link;

    .prologue
    .line 444
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 445
    return-void
.end method

.method public clearAuthors()V
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 480
    return-void
.end method

.method public clearCategories()V
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 363
    return-void
.end method

.method public clearContributors()V
    .locals 1

    .prologue
    .line 496
    sget-object v0, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 497
    return-void
.end method

.method public delete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v3, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v3, v3, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v3, :cond_0

    .line 770
    new-instance v3, Lcom/google/gdata/util/ServiceException;

    sget-object v4, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v4, v4, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v4}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v3

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getEditLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 773
    .local v0, "editLink":Lcom/google/gdata/model/atom/Link;
    if-nez v0, :cond_1

    .line 774
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Entry cannot be deleted"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 778
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Link;->getHrefUri()Ljava/net/URI;

    move-result-object v1

    .line 779
    .local v1, "editUrl":Ljava/net/URI;
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getEtag()Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, "etag":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v3, v3, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-static {v2}, Lcom/google/gdata/client/GDataProtocol;->isWeakEtag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    .end local v2    # "etag":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v1, v2}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URI;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    sget-object v0, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCanEdit()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-boolean v0, v0, Lcom/google/gdata/model/atom/Entry$EntryState;->canEdit:Z

    return v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/atom/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElementSet(Lcom/google/gdata/model/ElementKey;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContent()Lcom/google/gdata/data/IContent;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getContent()Lcom/google/gdata/model/atom/Content;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/google/gdata/model/atom/Content;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Content;

    return-object v0
.end method

.method public getContributors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    sget-object v0, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getControl()Lcom/google/gdata/model/atompub/Control;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Control;

    return-object v0
.end method

.method public bridge synthetic getEditLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getEditLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getEditLink()Lcom/google/gdata/model/atom/Link;
    .locals 3

    .prologue
    .line 671
    const-string v1, "edit"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/atom/Entry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 672
    .local v0, "editLink":Lcom/google/gdata/model/atom/Link;
    return-object v0
.end method

.method public getEdited()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/google/gdata/model/atompub/Edited;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlLink()Lcom/google/gdata/model/atom/Link;
    .locals 3

    .prologue
    .line 689
    const-string v1, "alternate"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/atom/Entry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 690
    .local v0, "htmlLink":Lcom/google/gdata/model/atom/Link;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->ID:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/model/atom/Entry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;
    .locals 3
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/atom/Link;

    .line 589
    .local v1, "link":Lcom/google/gdata/model/atom/Link;
    invoke-virtual {v1, p1, p2}, Lcom/google/gdata/model/atom/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    .end local v1    # "link":Lcom/google/gdata/model/atom/Link;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLinks(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "relToMatch"    # Ljava/lang/String;
    .param p2, "typeToMatch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/atom/Link;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/atom/Link;

    .line 609
    .local v1, "link":Lcom/google/gdata/model/atom/Link;
    invoke-virtual {v1, p1, p2}, Lcom/google/gdata/model/atom/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    .end local v1    # "link":Lcom/google/gdata/model/atom/Link;
    :cond_1
    return-object v2
.end method

.method public bridge synthetic getMediaEditLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getMediaEditLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getMediaEditLink()Lcom/google/gdata/model/atom/Link;
    .locals 3

    .prologue
    .line 677
    const-string v1, "edit-media"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/atom/Entry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 678
    .local v0, "mediaLink":Lcom/google/gdata/model/atom/Link;
    return-object v0
.end method

.method public getPlainTextContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getTextContent()Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    .line 436
    .local v0, "content":Lcom/google/gdata/model/atom/TextContent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPublished()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->PUBLISHED:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public bridge synthetic getResumableEditMediaLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getResumableEditMediaLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getResumableEditMediaLink()Lcom/google/gdata/model/atom/Link;
    .locals 3

    .prologue
    .line 683
    const-string v1, "http://schemas.google.com/g/2005#resumable-edit-media"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/atom/Entry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 684
    .local v0, "resumableEditMediaLink":Lcom/google/gdata/model/atom/Link;
    return-object v0
.end method

.method public getRights()Lcom/google/gdata/model/atom/TextContent;
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    return-object v0
.end method

.method public getSelectedFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->FIELDS:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Lcom/google/gdata/model/atom/Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v4, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v4, v4, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v4, :cond_0

    .line 703
    new-instance v4, Lcom/google/gdata/util/ServiceException;

    sget-object v5, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v5, v5, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v4, v5}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v4

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getSelfLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v3

    .line 706
    .local v3, "selfLink":Lcom/google/gdata/model/atom/Link;
    if-nez v3, :cond_1

    .line 707
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Entry cannot be retrieved"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 710
    :cond_1
    invoke-virtual {v3}, Lcom/google/gdata/model/atom/Link;->getHrefUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 714
    .local v1, "entryUrl":Ljava/net/URL;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getEtag()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "etag":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 716
    iget-object v4, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v4, v4, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v2}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/atom/Entry;

    .line 722
    .end local v2    # "etag":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 718
    .restart local v2    # "etag":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v5, v4, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getEdited()Lcom/google/gdata/data/DateTime;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getEdited()Lcom/google/gdata/data/DateTime;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v1, v6, v4}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/atom/Entry;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getUpdated()Lcom/google/gdata/data/DateTime;
    :try_end_0
    .catch Lcom/google/gdata/util/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 721
    .end local v2    # "etag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/google/gdata/util/NotModifiedException;
    move-object v4, p0

    .line 722
    goto :goto_0
.end method

.method public bridge synthetic getSelfLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getSelfLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSelfLink()Lcom/google/gdata/model/atom/Link;
    .locals 3

    .prologue
    .line 665
    const-string v1, "self"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/atom/Entry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 666
    .local v0, "selfLink":Lcom/google/gdata/model/atom/Link;
    return-object v0
.end method

.method public getService()Lcom/google/gdata/client/Service;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    return-object v0
.end method

.method public getSource()Lcom/google/gdata/model/atom/Source;
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lcom/google/gdata/model/atom/Source;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Source;

    return-object v0
.end method

.method public bridge synthetic getSummary()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getSummary()Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Lcom/google/gdata/model/atom/TextContent;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->SUMMARY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    return-object v0
.end method

.method public getTextContent()Lcom/google/gdata/model/atom/TextContent;
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getContent()Lcom/google/gdata/model/atom/Content;

    move-result-object v0

    .line 417
    .local v0, "content":Lcom/google/gdata/model/atom/Content;
    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 423
    .end local v0    # "content":Lcom/google/gdata/model/atom/Content;
    :goto_0
    return-object v0

    .line 420
    .restart local v0    # "content":Lcom/google/gdata/model/atom/Content;
    :cond_0
    instance-of v1, v0, Lcom/google/gdata/model/atom/TextContent;

    if-nez v1, :cond_1

    .line 421
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content object is not a TextContent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_1
    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    goto :goto_0
.end method

.method public bridge synthetic getTitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getTitle()Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/model/atom/TextContent;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    return-object v0
.end method

.method public getUpdated()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->UPDATED:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/model/atom/Entry$EntryState;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public hasControl()Z
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public isDraft()Z
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getControl()Lcom/google/gdata/model/atompub/Control;

    move-result-object v0

    .line 528
    .local v0, "control":Lcom/google/gdata/model/atompub/Control;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/model/atompub/Control;->isDraft()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected narrow(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;
    .locals 2
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-static {p0}, Lcom/google/gdata/model/atom/Kinds;->getElementKind(Lcom/google/gdata/model/Element;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "term":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0, p0, p1, v0}, Lcom/google/gdata/model/atom/Entry;->adapt(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/String;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 796
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/Element;->narrow(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v1

    goto :goto_0
.end method

.method public removeAuthor(Lcom/google/gdata/model/atom/Person;)Z
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/Person;

    .prologue
    .line 475
    sget-object v0, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeContent()V
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 405
    return-void
.end method

.method public removeContributor(Lcom/google/gdata/model/atom/Person;)Z
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/Person;

    .prologue
    .line 492
    sget-object v0, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeLink(Lcom/google/gdata/model/atom/Link;)Z
    .locals 1
    .param p1, "link"    # Lcom/google/gdata/model/atom/Link;

    .prologue
    .line 458
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeLinks()V
    .locals 1

    .prologue
    .line 462
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 463
    return-void
.end method

.method public removeLinks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "relToMatch"    # Ljava/lang/String;
    .param p2, "typeToMatch"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 626
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/atom/Link;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/atom/Link;

    .line 627
    .local v1, "link":Lcom/google/gdata/model/atom/Link;
    invoke-virtual {v1, p1, p2}, Lcom/google/gdata/model/atom/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    .end local v1    # "link":Lcom/google/gdata/model/atom/Link;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/atom/Link;

    .line 632
    .restart local v1    # "link":Lcom/google/gdata/model/atom/Link;
    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/Entry;->removeLink(Lcom/google/gdata/model/atom/Link;)Z

    goto :goto_1

    .line 634
    .end local v1    # "link":Lcom/google/gdata/model/atom/Link;
    :cond_2
    return-void
.end method

.method public setCanEdit(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iput-boolean p1, v0, Lcom/google/gdata/model/atom/Entry$EntryState;->canEdit:Z

    .line 573
    return-void
.end method

.method public setContent(Lcom/google/gdata/model/atom/Content;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/Content;

    .prologue
    .line 394
    sget-object v0, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 395
    return-void
.end method

.method public setControl(Lcom/google/gdata/model/atompub/Control;)Lcom/google/gdata/model/atom/Entry;
    .locals 1
    .param p1, "value"    # Lcom/google/gdata/model/atompub/Control;

    .prologue
    .line 546
    sget-object v0, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 547
    return-object p0
.end method

.method public setDraft(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Boolean;

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "control":Lcom/google/gdata/model/atompub/Control;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    new-instance v0, Lcom/google/gdata/model/atompub/Control;

    .end local v0    # "control":Lcom/google/gdata/model/atompub/Control;
    invoke-direct {v0}, Lcom/google/gdata/model/atompub/Control;-><init>()V

    .line 516
    .restart local v0    # "control":Lcom/google/gdata/model/atompub/Control;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/atompub/Control;->setDraft(Z)V

    .line 518
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 519
    return-void
.end method

.method public setEdited(Lcom/google/gdata/data/DateTime;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->getTzShift()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entry.edited must have a timezone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atompub/Edited;->KEY:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 351
    return-void

    .line 350
    :cond_1
    new-instance v0, Lcom/google/gdata/model/atompub/Edited;

    invoke-direct {v0, p1}, Lcom/google/gdata/model/atompub/Edited;-><init>(Lcom/google/gdata/data/DateTime;)V

    goto :goto_0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 281
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 282
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    const-string v0, "-"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entry.id must not be equal to \'-\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->ID:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 258
    return-void

    .line 257
    :cond_1
    new-instance v0, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Entry;->ID:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-virtual {v0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 298
    return-void
.end method

.method public setPublished(Lcom/google/gdata/data/DateTime;)V
    .locals 3
    .param p1, "v"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->getTzShift()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entry.published must have a timezone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->PUBLISHED:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 327
    return-void

    .line 325
    :cond_1
    new-instance v0, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Entry;->PUBLISHED:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-virtual {v0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public setRights(Lcom/google/gdata/model/atom/TextContent;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/TextContent;

    .prologue
    .line 386
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 387
    return-void
.end method

.method public setSelectedFields(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 313
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->FIELDS:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 314
    return-void
.end method

.method public setService(Lcom/google/gdata/client/Service;)V
    .locals 1
    .param p1, "s"    # Lcom/google/gdata/client/Service;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    .line 561
    return-void
.end method

.method public setSource(Lcom/google/gdata/model/atom/Source;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/Source;

    .prologue
    .line 504
    sget-object v0, Lcom/google/gdata/model/atom/Source;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 505
    return-void
.end method

.method public setSummary(Lcom/google/gdata/model/atom/TextContent;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/TextContent;

    .prologue
    .line 378
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->SUMMARY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 379
    return-void
.end method

.method public setTitle(Lcom/google/gdata/model/atom/TextContent;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/model/atom/TextContent;

    .prologue
    .line 370
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 371
    return-void
.end method

.method public setUpdated(Lcom/google/gdata/data/DateTime;)V
    .locals 3
    .param p1, "v"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->getTzShift()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entry.updated must have a timezone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->UPDATED:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 339
    return-void

    .line 337
    :cond_1
    new-instance v0, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Entry;->UPDATED:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-virtual {v0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/model/atom/Entry$EntryState;->versionId:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public update()Lcom/google/gdata/model/atom/Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 743
    iget-object v2, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v2, :cond_0

    .line 744
    new-instance v2, Lcom/google/gdata/util/ServiceException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v2

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Entry;->getEditLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 747
    .local v0, "editLink":Lcom/google/gdata/model/atom/Link;
    if-nez v0, :cond_1

    .line 748
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Entry cannot be updated"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Link;->getHrefUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 752
    .local v1, "editUrl":Ljava/net/URL;
    iget-object v2, p0, Lcom/google/gdata/model/atom/Entry;->state:Lcom/google/gdata/model/atom/Entry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/model/atom/Entry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v2, v1, p0}, Lcom/google/gdata/client/Service;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/atom/Entry;

    return-object v2
.end method
